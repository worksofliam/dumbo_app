**free

ctl-opt dftactgrp(*no);

dcl-pi P568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'

dcl-ds T72 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T72 FROM T72 LIMIT 1;

theCharVar = 'Hello from P568';
dsply theCharVar;
P398();
P563();
P335();
return;