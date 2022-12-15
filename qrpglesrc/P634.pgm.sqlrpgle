**free

ctl-opt dftactgrp(*no);

dcl-pi P634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds theTable extname('T182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T182 LIMIT 1;

theCharVar = 'Hello from P634';
dsply theCharVar;
callp localProc();
P351();
P504();
P340();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P634 in the procedure';
end-proc;