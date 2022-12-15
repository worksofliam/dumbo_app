**free

ctl-opt dftactgrp(*no);

dcl-pi P2328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P2155.rpgleinc'

dcl-ds T1219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1219 FROM T1219 LIMIT 1;

theCharVar = 'Hello from P2328';
dsply theCharVar;
P444();
P957();
P2155();
return;