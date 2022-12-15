**free

ctl-opt dftactgrp(*no);

dcl-pi P3327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2700.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P3210.rpgleinc'

dcl-ds T242 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T242 FROM T242 LIMIT 1;

theCharVar = 'Hello from P3327';
dsply theCharVar;
P2700();
P1783();
P3210();
return;