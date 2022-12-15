**free

ctl-opt dftactgrp(*no);

dcl-pi P3093;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1815.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P1759.rpgleinc'

dcl-ds T1841 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1841 FROM T1841 LIMIT 1;

theCharVar = 'Hello from P3093';
dsply theCharVar;
callp localProc();
P1815();
P242();
P1759();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3093 in the procedure';
end-proc;