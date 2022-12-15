**free

ctl-opt dftactgrp(*no);

dcl-pi P3656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2152.rpgleinc'
/copy 'qrpgleref/P2386.rpgleinc'
/copy 'qrpgleref/P3071.rpgleinc'

dcl-ds T789 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T789 FROM T789 LIMIT 1;

theCharVar = 'Hello from P3656';
dsply theCharVar;
P2152();
P2386();
P3071();
return;