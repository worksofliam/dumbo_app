**free

ctl-opt dftactgrp(*no);

dcl-pi P5545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1920.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P3699.rpgleinc'

dcl-ds T1493 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1493 FROM T1493 LIMIT 1;

theCharVar = 'Hello from P5545';
dsply theCharVar;
callp localProc();
P1920();
P438();
P3699();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5545 in the procedure';
end-proc;