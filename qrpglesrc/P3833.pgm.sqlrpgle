**free

ctl-opt dftactgrp(*no);

dcl-pi P3833;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2930.rpgleinc'
/copy 'qrpgleref/P1169.rpgleinc'
/copy 'qrpgleref/P1180.rpgleinc'

dcl-ds T1750 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1750 FROM T1750 LIMIT 1;

theCharVar = 'Hello from P3833';
dsply theCharVar;
P2930();
P1169();
P1180();
return;