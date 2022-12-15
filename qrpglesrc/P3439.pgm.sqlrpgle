**free

ctl-opt dftactgrp(*no);

dcl-pi P3439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2292.rpgleinc'
/copy 'qrpgleref/P1404.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds T1592 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1592 FROM T1592 LIMIT 1;

theCharVar = 'Hello from P3439';
dsply theCharVar;
callp localProc();
P2292();
P1404();
P324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3439 in the procedure';
end-proc;