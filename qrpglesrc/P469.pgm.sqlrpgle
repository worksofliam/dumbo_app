**free

ctl-opt dftactgrp(*no);

dcl-pi P469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds theTable extname('T341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T341 LIMIT 1;

theCharVar = 'Hello from P469';
dsply theCharVar;
callp localProc();
P14();
P365();
P115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P469 in the procedure';
end-proc;