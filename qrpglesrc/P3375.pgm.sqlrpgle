**free

ctl-opt dftactgrp(*no);

dcl-pi P3375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P1626.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

theCharVar = 'Hello from P3375';
dsply theCharVar;
P297();
P1626();
P81();
return;