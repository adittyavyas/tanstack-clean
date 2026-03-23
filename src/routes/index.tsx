import { createFileRoute } from '@tanstack/react-router'

export const Route = createFileRoute('/')({ component: App })

function App() {
  return (
   <div
   className='min-h-screen flex flex-col items-center justify-center text-3xl'
   >
    TanStack Start Starter
   </div>
  )
}
