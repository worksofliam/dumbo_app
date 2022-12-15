**free

ctl-opt dftactgrp(*no);

dcl-pi P158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T32') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T32 LIMIT 1;

theCharVar = 'Hello from P158';
dsply theCharVar;
callp localProc();
P78();
P18();
P65();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P158 in the procedure';
end-proc;