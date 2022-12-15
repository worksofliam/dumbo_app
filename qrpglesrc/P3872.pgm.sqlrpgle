**free

ctl-opt dftactgrp(*no);

dcl-pi P3872;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3653.rpgleinc'
/copy 'qrpgleref/P1646.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds T1797 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1797 FROM T1797 LIMIT 1;

theCharVar = 'Hello from P3872';
dsply theCharVar;
P3653();
P1646();
P126();
return;