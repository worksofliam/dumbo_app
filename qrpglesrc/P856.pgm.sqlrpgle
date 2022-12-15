**free

ctl-opt dftactgrp(*no);

dcl-pi P856;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P687.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds T392 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T392 FROM T392 LIMIT 1;

theCharVar = 'Hello from P856';
dsply theCharVar;
callp localProc();
P629();
P687();
P119();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P856 in the procedure';
end-proc;