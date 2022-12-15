**free

ctl-opt dftactgrp(*no);

dcl-pi P4979;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2434.rpgleinc'
/copy 'qrpgleref/P2472.rpgleinc'
/copy 'qrpgleref/P2018.rpgleinc'

dcl-ds theTable extname('T653') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T653 LIMIT 1;

theCharVar = 'Hello from P4979';
dsply theCharVar;
callp localProc();
P2434();
P2472();
P2018();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4979 in the procedure';
end-proc;