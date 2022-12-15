**free

ctl-opt dftactgrp(*no);

dcl-pi P3110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1067.rpgleinc'
/copy 'qrpgleref/P2456.rpgleinc'
/copy 'qrpgleref/P959.rpgleinc'

dcl-ds T1715 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1715 FROM T1715 LIMIT 1;

theCharVar = 'Hello from P3110';
dsply theCharVar;
P1067();
P2456();
P959();
return;