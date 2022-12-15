**free

ctl-opt dftactgrp(*no);

dcl-pi P4538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P1139.rpgleinc'
/copy 'qrpgleref/P4242.rpgleinc'

dcl-ds theTable extname('T766') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T766 LIMIT 1;

theCharVar = 'Hello from P4538';
dsply theCharVar;
callp localProc();
P705();
P1139();
P4242();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4538 in the procedure';
end-proc;