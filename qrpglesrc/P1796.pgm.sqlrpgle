**free

ctl-opt dftactgrp(*no);

dcl-pi P1796;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P823.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds T1237 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1237 FROM T1237 LIMIT 1;

theCharVar = 'Hello from P1796';
dsply theCharVar;
callp localProc();
P540();
P823();
P765();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1796 in the procedure';
end-proc;