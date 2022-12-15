**free

ctl-opt dftactgrp(*no);

dcl-pi P5314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3008.rpgleinc'
/copy 'qrpgleref/P1054.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds T1554 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1554 FROM T1554 LIMIT 1;

theCharVar = 'Hello from P5314';
dsply theCharVar;
P3008();
P1054();
P640();
return;