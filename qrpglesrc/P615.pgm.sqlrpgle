**free

ctl-opt dftactgrp(*no);

dcl-pi P615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P576.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'

dcl-ds theTable extname('T193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T193 LIMIT 1;

theCharVar = 'Hello from P615';
dsply theCharVar;
callp localProc();
P255();
P576();
P529();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P615 in the procedure';
end-proc;