**free

ctl-opt dftactgrp(*no);

dcl-pi P2949;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2789.rpgleinc'
/copy 'qrpgleref/P1205.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds T1130 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1130 FROM T1130 LIMIT 1;

theCharVar = 'Hello from P2949';
dsply theCharVar;
P2789();
P1205();
P354();
return;