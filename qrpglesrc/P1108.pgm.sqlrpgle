**free

ctl-opt dftactgrp(*no);

dcl-pi P1108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P952.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'

dcl-ds theTable extname('T251') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T251 LIMIT 1;

theCharVar = 'Hello from P1108';
dsply theCharVar;
callp localProc();
P952();
P257();
P664();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1108 in the procedure';
end-proc;