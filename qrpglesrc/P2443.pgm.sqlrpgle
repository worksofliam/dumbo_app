**free

ctl-opt dftactgrp(*no);

dcl-pi P2443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1271.rpgleinc'
/copy 'qrpgleref/P1133.rpgleinc'
/copy 'qrpgleref/P824.rpgleinc'

dcl-ds T862 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T862 FROM T862 LIMIT 1;

theCharVar = 'Hello from P2443';
dsply theCharVar;
P1271();
P1133();
P824();
return;