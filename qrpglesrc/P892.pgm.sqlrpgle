**free

ctl-opt dftactgrp(*no);

dcl-pi P892;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'

dcl-ds T708 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T708 FROM T708 LIMIT 1;

theCharVar = 'Hello from P892';
dsply theCharVar;
P26();
P610();
P292();
return;