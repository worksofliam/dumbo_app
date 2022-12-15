**free

ctl-opt dftactgrp(*no);

dcl-pi P5475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P2926.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'

dcl-ds T272 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T272 FROM T272 LIMIT 1;

theCharVar = 'Hello from P5475';
dsply theCharVar;
callp localProc();
P37();
P2926();
P201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5475 in the procedure';
end-proc;