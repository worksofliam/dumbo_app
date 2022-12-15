**free

ctl-opt dftactgrp(*no);

dcl-pi P486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds T1825 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1825 FROM T1825 LIMIT 1;

theCharVar = 'Hello from P486';
dsply theCharVar;
P359();
P52();
P18();
return;