**free

ctl-opt dftactgrp(*no);

dcl-pi P3838;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3443.rpgleinc'
/copy 'qrpgleref/P1689.rpgleinc'
/copy 'qrpgleref/P1261.rpgleinc'

dcl-ds T893 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T893 FROM T893 LIMIT 1;

theCharVar = 'Hello from P3838';
dsply theCharVar;
callp localProc();
P3443();
P1689();
P1261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3838 in the procedure';
end-proc;