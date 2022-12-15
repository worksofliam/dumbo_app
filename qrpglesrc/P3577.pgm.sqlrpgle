**free

ctl-opt dftactgrp(*no);

dcl-pi P3577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1755.rpgleinc'
/copy 'qrpgleref/P1939.rpgleinc'
/copy 'qrpgleref/P2936.rpgleinc'

dcl-ds T1826 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1826 FROM T1826 LIMIT 1;

theCharVar = 'Hello from P3577';
dsply theCharVar;
P1755();
P1939();
P2936();
return;