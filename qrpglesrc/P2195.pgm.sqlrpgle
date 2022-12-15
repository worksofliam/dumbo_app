**free

ctl-opt dftactgrp(*no);

dcl-pi P2195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2054.rpgleinc'
/copy 'qrpgleref/P2033.rpgleinc'
/copy 'qrpgleref/P1028.rpgleinc'

dcl-ds theTable extname('T67') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T67 LIMIT 1;

theCharVar = 'Hello from P2195';
dsply theCharVar;
P2054();
P2033();
P1028();
return;