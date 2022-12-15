**free

ctl-opt dftactgrp(*no);

dcl-pi P3191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P541.rpgleinc'
/copy 'qrpgleref/P2596.rpgleinc'
/copy 'qrpgleref/P540.rpgleinc'

dcl-ds T1326 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1326 FROM T1326 LIMIT 1;

theCharVar = 'Hello from P3191';
dsply theCharVar;
callp localProc();
P541();
P2596();
P540();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3191 in the procedure';
end-proc;