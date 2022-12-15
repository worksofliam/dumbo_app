**free

ctl-opt dftactgrp(*no);

dcl-pi P169;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T708') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T708 LIMIT 1;

theCharVar = 'Hello from P169';
dsply theCharVar;
callp localProc();
P3();
P73();
P95();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P169 in the procedure';
end-proc;