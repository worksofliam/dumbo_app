**free

ctl-opt dftactgrp(*no);

dcl-pi P5488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P915.rpgleinc'
/copy 'qrpgleref/P5022.rpgleinc'
/copy 'qrpgleref/P5077.rpgleinc'

dcl-ds T860 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T860 FROM T860 LIMIT 1;

theCharVar = 'Hello from P5488';
dsply theCharVar;
P915();
P5022();
P5077();
return;