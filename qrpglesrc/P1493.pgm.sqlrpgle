**free

ctl-opt dftactgrp(*no);

dcl-pi P1493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'

dcl-ds T683 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T683 FROM T683 LIMIT 1;

theCharVar = 'Hello from P1493';
dsply theCharVar;
callp localProc();
P300();
P1255();
P756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1493 in the procedure';
end-proc;