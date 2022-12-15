**free

ctl-opt dftactgrp(*no);

dcl-pi P5306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3096.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P3297.rpgleinc'

dcl-ds theTable extname('T566') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T566 LIMIT 1;

theCharVar = 'Hello from P5306';
dsply theCharVar;
callp localProc();
P3096();
P480();
P3297();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5306 in the procedure';
end-proc;