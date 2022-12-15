**free

ctl-opt dftactgrp(*no);

dcl-pi P2905;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1018.rpgleinc'
/copy 'qrpgleref/P2167.rpgleinc'
/copy 'qrpgleref/P1483.rpgleinc'

dcl-ds T1162 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1162 FROM T1162 LIMIT 1;

theCharVar = 'Hello from P2905';
dsply theCharVar;
P1018();
P2167();
P1483();
return;