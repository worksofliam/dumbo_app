**free

ctl-opt dftactgrp(*no);

dcl-pi P548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'

dcl-ds theTable extname('T319') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T319 LIMIT 1;

theCharVar = 'Hello from P548';
dsply theCharVar;
callp localProc();
P357();
P58();
P412();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P548 in the procedure';
end-proc;