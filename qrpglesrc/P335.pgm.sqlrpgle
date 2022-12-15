**free

ctl-opt dftactgrp(*no);

dcl-pi P335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds T1370 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1370 FROM T1370 LIMIT 1;

theCharVar = 'Hello from P335';
dsply theCharVar;
P292();
P220();
P146();
return;