**free

ctl-opt dftactgrp(*no);

dcl-pi P5293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P4716.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T674') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T674 LIMIT 1;

theCharVar = 'Hello from P5293';
dsply theCharVar;
callp localProc();
P246();
P4716();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5293 in the procedure';
end-proc;