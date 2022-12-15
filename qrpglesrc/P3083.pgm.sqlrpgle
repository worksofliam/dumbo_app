**free

ctl-opt dftactgrp(*no);

dcl-pi P3083;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P919.rpgleinc'
/copy 'qrpgleref/P671.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T116 LIMIT 1;

theCharVar = 'Hello from P3083';
dsply theCharVar;
callp localProc();
P919();
P671();
P117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3083 in the procedure';
end-proc;