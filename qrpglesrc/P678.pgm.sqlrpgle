**free

ctl-opt dftactgrp(*no);

dcl-pi P678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds theTable extname('T157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T157 LIMIT 1;

theCharVar = 'Hello from P678';
dsply theCharVar;
callp localProc();
P466();
P200();
P66();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P678 in the procedure';
end-proc;