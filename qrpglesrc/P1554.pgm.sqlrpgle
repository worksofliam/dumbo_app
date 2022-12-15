**free

ctl-opt dftactgrp(*no);

dcl-pi P1554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds T1095 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1095 FROM T1095 LIMIT 1;

theCharVar = 'Hello from P1554';
dsply theCharVar;
P18();
P165();
P198();
return;