**free

ctl-opt dftactgrp(*no);

dcl-pi P1222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P967.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P1088.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P1222';
dsply theCharVar;
P967();
P606();
P1088();
return;