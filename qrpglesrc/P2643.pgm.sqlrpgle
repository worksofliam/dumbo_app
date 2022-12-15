**free

ctl-opt dftactgrp(*no);

dcl-pi P2643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1545.rpgleinc'
/copy 'qrpgleref/P1561.rpgleinc'
/copy 'qrpgleref/P2229.rpgleinc'

dcl-ds T216 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T216 FROM T216 LIMIT 1;

theCharVar = 'Hello from P2643';
dsply theCharVar;
P1545();
P1561();
P2229();
return;