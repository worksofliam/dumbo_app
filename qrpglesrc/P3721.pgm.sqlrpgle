**free

ctl-opt dftactgrp(*no);

dcl-pi P3721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1832.rpgleinc'
/copy 'qrpgleref/P949.rpgleinc'
/copy 'qrpgleref/P2102.rpgleinc'

dcl-ds T1081 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1081 FROM T1081 LIMIT 1;

theCharVar = 'Hello from P3721';
dsply theCharVar;
P1832();
P949();
P2102();
return;