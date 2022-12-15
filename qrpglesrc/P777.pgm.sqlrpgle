**free

ctl-opt dftactgrp(*no);

dcl-pi P777;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'

dcl-ds T34 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T34 FROM T34 LIMIT 1;

theCharVar = 'Hello from P777';
dsply theCharVar;
callp localProc();
P181();
P226();
P504();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P777 in the procedure';
end-proc;