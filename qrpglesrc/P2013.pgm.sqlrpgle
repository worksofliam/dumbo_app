**free

ctl-opt dftactgrp(*no);

dcl-pi P2013;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1334.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P2013';
dsply theCharVar;
callp localProc();
P1334();
P94();
P219();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2013 in the procedure';
end-proc;