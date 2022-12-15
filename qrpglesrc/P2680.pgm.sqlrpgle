**free

ctl-opt dftactgrp(*no);

dcl-pi P2680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1876.rpgleinc'
/copy 'qrpgleref/P2082.rpgleinc'
/copy 'qrpgleref/P1993.rpgleinc'

dcl-ds T1117 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1117 FROM T1117 LIMIT 1;

theCharVar = 'Hello from P2680';
dsply theCharVar;
P1876();
P2082();
P1993();
return;