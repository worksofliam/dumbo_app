**free

ctl-opt dftactgrp(*no);

dcl-pi P806;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'

dcl-ds T1182 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1182 FROM T1182 LIMIT 1;

theCharVar = 'Hello from P806';
dsply theCharVar;
P72();
P628();
P563();
return;