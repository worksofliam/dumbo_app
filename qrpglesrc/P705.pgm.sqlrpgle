**free

ctl-opt dftactgrp(*no);

dcl-pi P705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'

dcl-ds T200 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T200 FROM T200 LIMIT 1;

theCharVar = 'Hello from P705';
dsply theCharVar;
callp localProc();
P485();
P331();
P523();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P705 in the procedure';
end-proc;