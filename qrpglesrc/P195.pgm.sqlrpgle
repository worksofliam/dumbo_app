**free

ctl-opt dftactgrp(*no);

dcl-pi P195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T811') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T811 LIMIT 1;

theCharVar = 'Hello from P195';
dsply theCharVar;
callp localProc();
P18();
P11();
P65();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P195 in the procedure';
end-proc;