import { createFileRoute } from '@tanstack/react-router'

export const Route = createFileRoute('/railway')({
  component: RouteComponent,
})

function RouteComponent() {
  return <div
     className='min-h-screen flex flex-col items-center justify-center text-3xl'
  >Hello "/railway"!</div>
}
