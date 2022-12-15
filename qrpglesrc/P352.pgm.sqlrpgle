**free

ctl-opt dftactgrp(*no);

dcl-pi P352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds T228 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T228 FROM T228 LIMIT 1;

theCharVar = 'Hello from P352';
dsply theCharVar;
P310();
P8();
P21();
return;