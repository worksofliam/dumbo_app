**free

ctl-opt dftactgrp(*no);

dcl-pi P401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds T420 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T420 FROM T420 LIMIT 1;

theCharVar = 'Hello from P401';
dsply theCharVar;
P55();
P194();
P243();
return;