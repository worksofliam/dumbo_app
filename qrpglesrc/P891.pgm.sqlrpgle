**free

ctl-opt dftactgrp(*no);

dcl-pi P891;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds theTable extname('T97') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T97 LIMIT 1;

theCharVar = 'Hello from P891';
dsply theCharVar;
callp localProc();
P360();
P508();
P78();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P891 in the procedure';
end-proc;