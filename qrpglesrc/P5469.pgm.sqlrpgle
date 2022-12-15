**free

ctl-opt dftactgrp(*no);

dcl-pi P5469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2597.rpgleinc'
/copy 'qrpgleref/P2898.rpgleinc'
/copy 'qrpgleref/P4892.rpgleinc'

dcl-ds T1382 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1382 FROM T1382 LIMIT 1;

theCharVar = 'Hello from P5469';
dsply theCharVar;
P2597();
P2898();
P4892();
return;