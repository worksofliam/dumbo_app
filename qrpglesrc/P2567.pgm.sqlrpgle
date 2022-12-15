**free

ctl-opt dftactgrp(*no);

dcl-pi P2567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1987.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P1369.rpgleinc'

dcl-ds T418 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T418 FROM T418 LIMIT 1;

theCharVar = 'Hello from P2567';
dsply theCharVar;
callp localProc();
P1987();
P832();
P1369();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2567 in the procedure';
end-proc;