**free

ctl-opt dftactgrp(*no);

dcl-pi P3843;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3731.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P1816.rpgleinc'

dcl-ds T1654 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1654 FROM T1654 LIMIT 1;

theCharVar = 'Hello from P3843';
dsply theCharVar;
P3731();
P198();
P1816();
return;