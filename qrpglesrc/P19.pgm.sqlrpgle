**free

ctl-opt dftactgrp(*no);

dcl-pi P19;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T206 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T206 FROM T206 LIMIT 1;

theCharVar = 'Hello from P19';
dsply theCharVar;
P8();
P0();
P13();
return;