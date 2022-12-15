**free

ctl-opt dftactgrp(*no);

dcl-pi P1017;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P995.rpgleinc'

dcl-ds theTable extname('T653') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T653 LIMIT 1;

theCharVar = 'Hello from P1017';
dsply theCharVar;
callp localProc();
P119();
P85();
P995();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1017 in the procedure';
end-proc;