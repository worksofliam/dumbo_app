**free

ctl-opt dftactgrp(*no);

dcl-pi P3587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1747.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P3251.rpgleinc'

dcl-ds T839 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T839 FROM T839 LIMIT 1;

theCharVar = 'Hello from P3587';
dsply theCharVar;
callp localProc();
P1747();
P10();
P3251();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3587 in the procedure';
end-proc;